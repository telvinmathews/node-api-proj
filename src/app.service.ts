import { Injectable } from '@nestjs/common';
import { PrismaClient, user } from '@prisma/client';
const prisma = new PrismaClient();

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  getUsers(): Promise<user[]> {
    return prisma.user.findMany();
  }

  async createUser() {
    return await prisma.user.create({
      data: {
        age: '30',
        first_name: 'John',
        last_name: 'Doe',
        password: '123456',
        bio: 'I am a bio',
      },
    });
  }
}
