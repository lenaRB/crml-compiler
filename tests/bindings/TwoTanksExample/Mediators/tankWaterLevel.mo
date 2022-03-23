within TwoTanksExample.Mediators;

record tankWaterLevel
extends  Mediator(mType = "Real",
  clients = {Client(modelID = "TwoTanksExample.Requirements.LiquidLevel", component = "waterLevel"),
   Client(modelID = "TwoTanksExample.Requirements.LevelAdjustment", component = "inFlow")},
  providers = {Provider(modelID = "TwoTanksExample.Design.Components.Tank",
    template = "%getPath.levelOfLiquid")});
end tankWaterLevel;