import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { SCHEMA_NAME, TestingSchema } from './app.schema';

@Module({
  imports: [
    MongooseModule.forRoot(process.env.MONGODB_URL),
    MongooseModule.forFeature([{ name: SCHEMA_NAME, schema: TestingSchema }]),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
