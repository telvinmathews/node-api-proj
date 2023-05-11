import { Controller, Get, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { user } from '@prisma/client';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): Promise<user[]> {
    return this.appService.getUsers();
  }

  @Post()
  createUser(): Promise<user> {
    return this.appService.createUser();
  }
}
