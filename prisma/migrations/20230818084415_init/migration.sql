-- CreateTable
CREATE TABLE "modules" (
    "id" SERIAL NOT NULL,
    "singleLineText" TEXT[],
    "number" INTEGER[],
    "dateNTime" TIMESTAMP(3)[],
    "image" TEXT[],
    "toggle" BOOLEAN[],
    "email" TEXT[],
    "phone" INTEGER[],
    "user" TEXT[],
    "search" TEXT[],
    "textArea" TEXT[],
    "multiSearch" TEXT[],
    "picker" TEXT[],
    "multiPick" TEXT[],
    "currency" TEXT[],
    "fileLink" TEXT[],
    "link" TEXT[],

    CONSTRAINT "modules_pkey" PRIMARY KEY ("id")
);
