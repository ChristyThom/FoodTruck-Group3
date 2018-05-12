<?php
$myItem = new Item(1,"8oz Iced Coffee","Something Cold For A Hot Summer's Day", 1.99);
$myItem->addExtra("Flavored Syrup");
$myItem->addExtra("2% Milk");
$myItem->addExtra("Soy Milk");
$myItem->addExtra("Almond Milk");
$myItem->addExtra("Condensed Milk");
$items[]=$myItem;

$myItem = new Item(1,"8oz Hot Coffee","Made with Love", 1.99);
$myItem->addExtra("Flavored Syrup");
$myItem->addExtra("2% Milk");
$myItem->addExtra("Soy Milk");
$myItem->addExtra("Almond Milk");
$items[]=$myItem;

$myItem = new Item(2, "Doughnut", "Customized To Your Liking", 0.99);
$myItem->addExtra("Sprinkles");
$myItem->addExtra("Jelly Filling");
$myItem->addExtra("Nutella Filling");
$items[]=$myItem;

$myItem = new Item(3, "Strawberry Crepes", "Dainty and Sweet", 3.99);
$myItem->addExtra("Extra Whip");
$myItem->addExtra("Blueberry Glaze");
$myItem->addExtra("Banana Slices");
$myItem->addExtra("Chocolate Sauce");
$items[]=$myItem;


if(isset($_POST['submit'])){
    $subtotal = 0; //init
    $toppings_total=0;
    foreach($items as $item){

        $subtotal += $item->Price;
        foreach($item->Extras as $extra){
            $toppings_total += .25;
        }
    }
}
$total=$subtotal+$toppings_total;
class Item
{
    public $ID = 0;
    public $Name = '';
    public $Description = '';
    public $Price = 0;
    public $Extras = array();
    
    public function __construct($ID,$Name,$Description,$Price)
    {
        $this->ID = $ID;
        $this->Name = $Name;
        $this->Description = $Description;
        $this->Price = $Price;
        
    }#end Item constructor
    
    public function addExtra($extra)
    {
        $this->Extras[] = $extra;
        
    }#end addExtra()

}#end Item class