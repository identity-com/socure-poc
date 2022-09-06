import {PutObjectCommand} from "@aws-sdk/client-s3";

const {S3Client} = require('@aws-sdk/client-s3');

export default class Storage {
  private s3;
  private bucket: string;

  constructor(region: string, bucket: string) {
    this.s3 = new S3Client({region});
    this.bucket = bucket;
  }

  public async store(address: string, name: string, data: any) {
    return this.s3.send(new PutObjectCommand({
      Bucket: this.bucket,
      Key: `${address}/${name}`,
      Body: data,
    }));
  }
}
