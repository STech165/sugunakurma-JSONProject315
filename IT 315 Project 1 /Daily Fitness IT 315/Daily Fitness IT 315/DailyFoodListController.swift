//
//  DailyFoodListController.swift
//  Daily Fitness IT 315
//
//  Created by Suguna Kurma on 12/3/23.
//

import Foundation
import UIKit

class DailyFoodListController : UITableViewController{
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        InitilizeData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // the segue knows the destination controller
        var destController = segue.destination as! ViewController
        
        //find the selected row index from the tableview
        let index = tableView.indexPathForSelectedRow
        
        //find matching row in the object array
        let selectedRowFL = HealthPageArray[index!.row]
        
        // set the destination controller HealthPageArray object with the object from the selected tableView
        destController.SplitViewFC = selectedRowFL
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HealthPageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //rememind me to add an identifier for this cell on the storyboard.
        var myCell = tableView.dequeueReusableCell(withIdentifier: "myCellID")
        
        var cellIndex = indexPath.row
        
        var FL = HealthPageArray[cellIndex]
        
        myCell?.textLabel!.text = FL.FoodName
        myCell?.detailTextLabel!.text = FL.NameTitle
        
        //myCell?.imageView = UIImage
        
        
        
        myCell?.textLabel!.font = UIFont.boldSystemFont(ofSize: 18)
        myCell?.textLabel!.textColor = UIColor.darkGray
        return myCell!
        
    
    
    
    
    }
    
    
    
    var HealthPageArray = [Fitness]()
    
    func InitilizeData() {
        let fo1 = Fitness()
        fo1.FoodName = "Tomato and Avocado Bruschetta"
        fo1.FoodDescription = "Avoids food and ingrediants that consist of any meat or seafood"
        fo1.FoodTime = "30 mins"
        fo1.FoodBenefits = " Benefits: Protein: 3g, Dietary Fiber: 3g, Calories: 191 per serving - (10 servings), Cholestrol: 0mg, Carbohydrates: 19g"
        fo1.FoodIngrediants = "Ingrediants :  1 Baguette, 1/4 cup extra-virgin olive oil, 1tsp garlic powder, 20 ounces cherry tomatoes, 1 tbsp white balsamic vinegar, 3 minced garlic cloves, 2 Avocados, 1 tsp lemon juice, 1/4 cup fresh minced basil, 1/2 tsp sea salt, 1/4 tsp black pepper"
        fo1.FoodSite = "https://themodernproper.com/tomato-and-avocado-bruschetta"
        fo1.FoodImage = "Vegetarian.jpeg"
        fo1.NameTitle = "Vegetarian"
        fo1.Advisory = "This App is developed as an educational project."
        HealthPageArray.append(fo1)
        
        let fo2 = Fitness()
        fo2.FoodName = "Goddess Bowls"
        fo2.FoodDescription = "Consists of a diet that incorporates all types of meat such as poultry, red meat, and seafood"
        fo2.FoodTime = "55 Mins"
        fo2.FoodBenefits = "Benefits: Protein: 39g, Calcium: 144 mg, Potassium: 1131mg, Carbohydrates: 51g, calories: 995 per serving (4 servings) "
        fo2.FoodIngrediants = "Ingrediants :  1/2 lb asparagus, 2tbsp exra-vigin oil, 1lb boneless skinless chicken breast, 1 tsp garlic powder, 1 tsp dried oregano, 1 c. mayonnaise, 1 c. greek yogurt, 1 1/2 c. chopped basil leaves, 1/2 c. chopped chives, 1/4 c. lemon juice, 2 garlic cloves, 4 c. cooked brown rice, 1 avocado sliced, 1 c. halved cherry tomatoes."
        fo2.FoodSite = "https://www.delish.com/cooking/recipe-ideas/recipes/a54905/goddess-bowls-recipe/"
        fo2.FoodImage = "NonVeg.jpeg"
        fo2.NameTitle = "Non-Vegetarian"
        fo2.Advisory = "This App is developed as an educational project."
        HealthPageArray.append(fo2)
        
        let fo3 = Fitness()
        fo3.FoodName = "Kung Pao Mushrooms"
        fo3.FoodDescription = "Avoids all foods that is sourced from any animals: meat,eggs,dairy,honey, or anything derived from animals as well."
        fo3.FoodTime = "30 Mins"
        fo3.FoodBenefits = " Benefits: Protein: 14g , Dietary Fiber: 6g , Total Calories: 325"
        fo3.FoodIngrediants = "Ingrediants :  Mushrooms, Soy Sauce, Vinegar, Brown Sugar, CornStarch, Veggies (bell peppers, green bellpeppers, green onions, any of your choice, raw peanuts, ginger, garlic, and dried red chilli peppers"
        fo3.FoodSite = "https://themodernproper.com/kung-pao-mushrooms"
        fo3.FoodImage = "Vegan.jpeg"
        fo3.NameTitle = "Vegan"
        fo3.Advisory = "This App is developed as an educational project."
        HealthPageArray.append(fo3)
        
        let fo4 = Fitness()
        fo4.FoodName = "Golden Soup"
        fo4.FoodDescription = "No Gluten: Avoids wheat and some other grains that contain gluten"
        fo4.FoodTime = "65 Mins"
        fo4.FoodBenefits = "Benefits:  Protein: 7g, Carbohydrates: 24g, Dietary Fiber: 5g, Cholestrol: 0mg, Calories: 246 per serving (8 servings"
        fo4.FoodIngrediants = "Ingrediants :  2 cans chickpeas, 1 medium califlower, 3 large carrots, 3 tbsp yellow curry powder, 1 tsp ground turmeric, 1 1/2 tsp salt, 1/4 tsp cayenne pepper, 4 tbsp extra virgin oil, 1 small yellow onion, 1 tbsp grated ginger, 4 minced garlic cloves, 4 cups vegetable stock, 1 can full-fat coconut milk, 1 tsp sugar, 2 tbsp fresh lemon juice"
        fo4.FoodSite = "https://themodernproper.com/golden-soup"
        fo4.FoodImage = "GlutenFree.jpeg"
        fo4.NameTitle = "Gluten-Free"
        fo4.Advisory = "This App is developed as an educational project."
        HealthPageArray.append(fo4)
        
        let fo5 = Fitness()
        fo5.FoodName = "Shrimp and Avocado Salad"
        fo5.FoodDescription = "Incorporates only seafood ingrediants into a vegetarian diet"
        fo5.FoodTime = "30 Mins"
        fo5.FoodBenefits = "Benefits:  Protein: 21g, Vitamin A: 3428IU, Potassium: 668mg, Dietary Fiber: 9g, Carbohydrates: 17g,Calories:367 per serving (6 servings)"
        fo5.FoodIngrediants = "Ingrediants :  1 lb large peeled, chopped onion, 3 small ripe avocados, 1/2 cup thinly sliced radishes, 1/4 cup thinly sliced scallions, 1/4 cup extra-virgin olive oil, 1/4 cup fresh lime juice, 1 tbsp grated fresh ginger, 2 tbsp sugar, 3/4 tsp salt, 1/4 crushed red pepper, 12 cups mixed greens or chopped romain lettuce, chopped fresh cilantro for garnish"
        fo5.FoodSite = "https://www.eatingwell.com/recipe/7901031/shrimp-avocado-salad/"
        fo5.FoodImage = "Pescatarian.jpeg"
        fo5.NameTitle = "Pescetarian"
        fo5.Advisory = "This App is developed as an educational project."
        HealthPageArray.append(fo5)
    }
    
    
    
    
}
