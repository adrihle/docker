import { Controller, Get, Param, Post } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  async list() {
    return this.appService.list();
  }

  @Get(':name')
  async getHello(@Param('name') name: string) {
    return this.appService.create(name);
  }
}
