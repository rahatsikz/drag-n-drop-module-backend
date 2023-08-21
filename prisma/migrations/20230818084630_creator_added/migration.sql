/*
  Warnings:

  - Added the required column `creator` to the `modules` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `modules` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "modules" ADD COLUMN     "creator" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL;
