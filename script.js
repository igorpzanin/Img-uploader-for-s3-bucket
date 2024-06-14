document.addEventListener('DOMContentLoaded', () => {
    const uploadForm = document.getElementById('uploadForm');
    const fileInput = document.getElementById('fileInput');
    const statusText = document.getElementById('status');
    const apiEndpoint = 'YourAPIEndpoint';
    
    uploadForm.addEventListener('submit', async (e) => {
      e.preventDefault();
  
      const file = fileInput.files[0];
      if (!file) {
        statusText.textContent = 'Please select a file.';
        return;
      }
  
      const reader = new FileReader();
      reader.onloadend = async () => {
        const fileContent = reader.result.split(',')[1]; 
        const fileName = file.name;
  
        const payload = {
          fileContent: fileContent,
          fileName: fileName,
        };
  
        try {
          console.log(JSON.stringify(payload))
          const response = await fetch(apiEndpoint, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify(payload),
          });
          const data = await response.text();
          statusText.textContent = data;
        } catch (error) {
          console.error('Error uploading file:', error);
          statusText.textContent = 'Failed to upload file.';
        }
      };
  
      reader.readAsDataURL(file);
    });
  });
  