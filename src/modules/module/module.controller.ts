import { Request, Response } from "express";
import { ModuleService } from "./module.service";

const insertIntoDB = async (req: Request, res: Response) => {
  try {
    const result = await ModuleService.insertIntoDB(req.body);
    res.send({
      success: true,
      message: "Module Created Successfully",
      data: result,
    });
  } catch (error) {
    res.send(error);
  }
};

const getLatestFromDB = async (req: Request, res: Response) => {
  try {
    const result = await ModuleService.getLatestFromDB();
    res.send({
      success: true,
      message: "Module fetched Successfully",
      data: result,
    });
  } catch (error) {
    res.send(error);
  }
};

export const ModuleController = {
  insertIntoDB,
  getLatestFromDB,
};
