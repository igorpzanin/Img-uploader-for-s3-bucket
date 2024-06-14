const AWS = require('aws-sdk');
const s3 = new AWS.S3();
const bucketNameDest = process.env.S3_BUCKET_DEST;
const bucketName = process.env.S3_BUCKET;

exports.handler = async (event) => {
  try {
    console.log(event)
    const { fileContent, fileName } = event;
    const timestampedFileName = `${Date.now().toString()}-${fileName}`;
    const params = {
      Bucket: bucketNameDest,
      Key: timestampedFileName,
      Body: Buffer.from(fileContent, 'base64'),
      ContentType: 'application/octet-stream'
    };

    await s3.upload(params).promise();

    const uploadedFileUrl = `http://${bucketName}.s3-website-us-east-1.amazonaws.com/${timestampedFileName}`;

    return {
      statusCode: 200,
      body: JSON.stringify(uploadedFileUrl),
    };
  } catch (error) {
    console.error(error);
    return {
      statusCode: 500,
      body: JSON.stringify('Failed to upload file.'),
    };
  }
};
