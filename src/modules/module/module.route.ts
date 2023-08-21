import express from "express";
import { ModuleController } from "./module.controller";

const router = express.Router();

router.post("/create-module", ModuleController.insertIntoDB);
router.get("/", ModuleController.getLatestFromDB);

export const ModuleRoutes = router;
