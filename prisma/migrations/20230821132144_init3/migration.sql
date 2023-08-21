/*
  Warnings:

  - You are about to drop the column `dateNTime` on the `modules` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "modules" DROP COLUMN "dateNTime",
ADD COLUMN     "datetime" TEXT[];
