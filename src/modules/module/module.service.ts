import { PrismaClient, Module } from "@prisma/client";

const prisma = new PrismaClient();

// const insertIntoDB = async (data: Module): Promise<Module> => {
//   const result = await prisma.module.create({
//     data,
//   });
//   console.log({ result });

//   return result;
// };

const insertIntoDB = async (data: Module): Promise<Module> => {
  const modifiedData = {
    ...data,
    singleLineText: data.singleLineText.map((obj) => JSON.stringify(obj)),
    number: data.number.map((obj) => JSON.stringify(obj)),
    picker: data.picker.map((obj) => JSON.stringify(obj)),
  };

  const result = await prisma.module.create({
    data: modifiedData,
  });
  console.log({ result });

  return result;
};

const getLatestFromDB = async () => {
  const result = await prisma.module.findFirst({
    orderBy: {
      createdAt: "desc",
    },
    take: 1,
  });

  return result;
};

export const ModuleService = {
  insertIntoDB,
  getLatestFromDB,
};
