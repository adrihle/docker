import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { SCHEMA_NAME, TestingDTO } from './app.schema';

@Injectable()
export class AppService {
  constructor(
    @InjectModel(SCHEMA_NAME) private readonly model: Model<TestingDTO>,
  ) {}

  getHello(): string {
    return 'Hello World War II!';
  }

  async create(name: string) {
    const newTesting = new this.model({ name });
    await newTesting.save();
    return this.model.find();
  }

  async list() {
    return this.model.find();
  }
}
