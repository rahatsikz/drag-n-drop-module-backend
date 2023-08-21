/*
  Warnings:

  - The `singleLineText` column on the `modules` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `number` column on the `modules` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `picker` column on the `modules` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[name]` on the table `modules` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "modules" DROP COLUMN "singleLineText",
ADD COLUMN     "singleLineText" JSONB[],
DROP COLUMN "number",
ADD COLUMN     "number" JSONB[],
DROP COLUMN "picker",
ADD COLUMN     "picker" JSONB[],
ALTER COLUMN "creator" DROP NOT NULL,
ALTER COLUMN "name" DROP NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "modules_name_key" ON "modules"("name");
