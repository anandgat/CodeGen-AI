/*
  Warnings:

  - Made the column `projectId` on table `Message` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `userId` to the `Project` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."Message" ALTER COLUMN "projectId" SET NOT NULL;

-- AlterTable
ALTER TABLE "public"."Project" ADD COLUMN     "userId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "public"."Usage" (
    "key" TEXT NOT NULL,
    "points" INTEGER NOT NULL,
    "expire" TIMESTAMP(3),

    CONSTRAINT "Usage_pkey" PRIMARY KEY ("key")
);
