
const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

// async function main() {
//     const allUsers = prisma.tb_user;
//     console.log('allUsers', allUsers)
//     // ... you will write your Prisma Client queries here
//     const usersList = await allUsers.findMany()
//     console.log('usersList', usersList)
// }

// main()
//     .catch((e) => {
//         throw e
//     })
//     .finally(async () => {
//         await prisma.$disconnect()
//     })

module.exports = prisma;

// pm2 使用方式
// npm install -g pm2
// pm2 start index.js
// pm2 stop all 停止所有进程
// pm2 restart all 重启所有进程
// pm2 delete all 杀死全部进程

// npm run lint --fix自动格式化

// npx prisma db pull 更新表结构
// npx prisma generate 更新模型 
// npx prisma migrate dev --name init 迁移