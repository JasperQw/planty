

class PlantKnowledgeTemplate{
  String plant_pic,plant_name,plant_kingdom,plant_family,plant_description,plant_sunlight,
  plant_amount_of_water,plant_temperature,plant_soil_pH,plant_safety_distance,plant_soil_type,
  plant_suggested_crop_rotation_pic,plant_growth_tutorial_video_url;

  
  List<String> plant_weed_management,plant_pest_disease_control,plant_fertilization,
  plant_irrigtation,plant_pollination_management,plant_SSLP;

  PlantKnowledgeTemplate({required this.plant_pic,required this.plant_name,required this.plant_kingdom,
  required this.plant_family,required this.plant_description, required this.plant_sunlight,required this.plant_amount_of_water,
  required this.plant_temperature,required this.plant_soil_pH,required this.plant_safety_distance,required this.plant_soil_type,
  required this.plant_suggested_crop_rotation_pic,required this.plant_growth_tutorial_video_url,
  this.plant_weed_management= const[],
  this.plant_pest_disease_control=const[],
  this.plant_fertilization=const[],
  this.plant_irrigtation=const[],
  this.plant_pollination_management=const[],
  this.plant_SSLP=const[]});
}