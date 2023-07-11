import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';

export const SCHEMA_NAME = 'Testing';

@Schema()
export class TestingDTO {
  @Prop()
  name: string;
}

export const TestingSchema = SchemaFactory.createForClass(TestingDTO);
