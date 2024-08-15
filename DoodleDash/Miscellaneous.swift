//
//  Miscellaneous.swift
//  DoodleDash
//
//  Created by Mehul Jain on 11/08/24.
//

import Foundation

let everydayObjects: [String] = [
    "chair", "table", "pen", "notebook", "lamp", "mug", "plate", "spoon", "fork", "knife",
    "glass", "phone", "computer", "keyboard", "mouse", "pencil", "eraser", "book", "backpack",
    "umbrella", "clock", "cushion", "blanket", "pillow", "towel", "soap", "brush", "toothpaste",
    "comb", "shampoo", "mirror", "scissors", "ruler", "stapler", "paper", "envelope", "basket",
    "wallet", "watch", "ring", "necklace", "earrings", "gloves", "hat", "coat", "shoes", "socks",
    "belt", "bag", "jacket", "sunglasses","camera","television","remote","headphones","speakers",
    "charger", "tablet", "laptop", "fan", "heater", "air conditioner","vacuum","broom","dustpan",
    "mop", "bucket", "soap", "detergent","sponge","tissue","napkin","candle","matches","lighter",
    "flashlight","batteries","radio","calculator","notepad","calendar","stickynotes","whiteboard",
    "marker","crayons","paint","brushes","palette","easel","canvas","sculpture","statue","pictureframe",
    "photo album", "magazine", "newspaper", "map", "globe", "binoculars", "thermometer", "barometer", "compass",
    "magnifying glass", "microscope", "telescope", "scales", "ruler", "protractor", "tape measure", "scissors",
    "knife", "peeler", "grater", "whisk", "spatula", "tongs", "ladle", "colander", "strainer", "sieve",
    "mixing bowl", "cutting board", "rolling pin", "cookie cutter", "baking tray", "cake tin", "muffin tin",
    "pie dish", "roasting tin", "frying pan", "saucepan", "stock pot", "pressure cooker", "slow cooker",
    "rice cooker", "steamer", "blender", "food processor", "mixer", "toaster", "kettle", "coffee maker",
    "tea pot", "tea strainer", "coffee grinder", "juicer", "citrus press", "bottle opener", "corkscrew",
    "can opener", "jar opener", "cheese grater", "pizza cutter", "pizza stone", "bread bin", "bread knife",
    "chopping board", "knife sharpener", "measuring jug", "measuring spoons", "measuring cups", "timer",
    "thermometer", "oven mitts", "apron", "tea towel", "kitchen roll", "bin bags", "recycling bin", "compost bin",
    "fruit bowl", "salad spinner", "oil bottle", "vinegar bottle", "salt shaker", "pepper mill", "sugar bowl",
    "milk jug", "butter dish", "egg cup", "egg timer", "egg slicer", "egg poacher", "egg beater", "whisk",
    "soup ladle", "serving spoon", "tongs", "carving knife", "carving fork", "gravy boat", "sauce boat", "saucepan",
    "casserole dish", "stockpot", "baking tray", "roasting tin", "grill pan", "wok", "paella pan", "fondue set",
    "sushi mat", "rice bowl", "chopsticks", "sake set", "tea set", "coffee set", "wine glass", "champagne glass",
    "beer glass", "whiskey glass", "cocktail shaker", "strainer", "stirring stick", "ice cube tray", "wine rack",
    "wine cooler", "wine opener", "wine stopper", "bottle stopper", "vacuum pump", "decanter", "ice bucket",
    "ice tongs", "ice scoop", "tray", "serving tray", "dinner plate", "side plate", "dessert plate", "soup bowl",
    "salad bowl", "pasta bowl", "cereal bowl", "bread plate", "butter knife", "fish knife", "steak knife",
    "dining table", "dining chair", "sideboard", "china cabinet", "cutlery drawer", "cutlery tray", "knife block",
    "chopping board", "meat tenderizer", "meat mallet", "rolling pin", "pastry brush", "pastry cutter", "flour sifter",
    "pasta maker", "pizza oven", "bread maker", "microwave", "oven", "grill", "hob", "range", "cooker", "dishwasher",
    "fridge", "freezer", "washing machine", "tumble dryer", "ironing board", "iron", "clothes airer", "laundry basket",
    "washing line", "clothes pegs", "laundry detergent", "fabric softener", "stain remover", "bleach", "cleaning spray",
    "surface cleaner", "window cleaner", "floor cleaner", "toilet cleaner", "shower cleaner", "bathroom cleaner",
    "kitchen cleaner", "multi-purpose cleaner", "furniture polish", "wood polish", "metal polish", "glass polish",
    "vacuum cleaner", "vacuum bags", "vacuum filters", "dusting cloth", "dustpan and brush", "broom", "mop", "bucket",
    "floor mop", "spray mop", "steam mop", "carpet cleaner", "carpet shampoo", "rug cleaner", "stain remover",
    "upholstery cleaner", "window cloth", "squeegee", "step ladder", "toolbox", "hammer", "screwdriver", "wrench",
    "pliers", "tape measure", "spirit level", "drill", "drill bits", "screws", "nails", "hooks", "picture hangers",
    "brackets", "wall plugs", "rawl plugs", "cable ties", "cable clips", "extension lead", "plug adapter",
    "power strip", "battery charger", "batteries", "torch", "light bulb", "lampshade", "ceiling light", "wall light",
    "desk lamp", "floor lamp", "table lamp", "night light", "bedside lamp", "alarm clock", "radio", "clock",
    "wall clock", "pendulum clock", "grandfather clock", "cuckoo clock", "sundial", "hourglass", "stopwatch",
    "timer", "kitchen timer", "egg timer", "sports watch", "heart rate monitor", "fitness tracker", "pedometer",
    "step counter", "smartwatch", "activity tracker", "running watch", "cycling computer", "bike light", "bike lock",
    "helmet", "cycling gloves", "cycling shoes", "water bottle", "hydration pack", "energy bars", "snack bars",
    "sports drink", "protein shake", "yoga mat", "yoga block", "yoga strap", "resistance band", "foam roller",
    "exercise ball", "dumbbells", "kettlebells", "medicine ball", "exercise bike", "treadmill", "rowing machine",
    "elliptical trainer", "stair climber", "stepper", "ab roller", "sit-up bench", "weight bench", "weight rack",
    "weight plates", "barbell", "dumbbell set", "kettlebell set", "medicine ball set", "resistance band set",
    "foam roller set", "exercise mat", "exercise straps", "pull-up bar", "dip station", "push-up bars", "jump rope","boxing gloves", "punching bag", "speed bag", "hand wraps", "shin guards", "mouthguard", "boxing shoes","headgear", "cup", "groin protector", "elbow pads", "knee pads", "ankle supports", "wrist supports","weightlifting belt", "chalk", "lifting straps", "lifting gloves", "lifting shoes", "squat rack", "power cage","leg press", "hack squat", "leg curl", "leg extension", "calf raise", "seated calf raise", "standing calf raise","hyperextension", "roman chair", "ab bench", "sit-up bench", "decline bench", "incline bench", "flat bench","adjustable bench", "utility bench", "preacher curl bench", "leg curl machine", "leg extension machine","lat pulldown", "seated row", "cable crossover", "pec deck", "chest press", "shoulder press", "leg press","hack squat", "smith machine"]

enum PlayAuthState:String{
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "Please sign in to Game Center to play."
    case authenticated = "Authenticated"
    case error = "There was an error logging into Game Center."
    case restricted = "You're not allowed to play multiplayer games!"
}
    struct PastGuess: Identifiable {
        let id = UUID()
        var message: String
        var correct: Bool
    }

    let maxTimeRemaining = 100

