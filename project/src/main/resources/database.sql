create database smart;
use smart;
CREATE TABLE mobiles (
    `id` INT NOT NULL auto_increment,
    `Mobile_name` VARCHAR(45) NOT NULL,
    `RAM` VARCHAR(45) NOT NULL,
    `Storage` VARCHAR(45) NOT NULL,
    `Battery` VARCHAR(45) NOT NULL,
    `Scrensize` VARCHAR(45) NOT NULL,
    `primary_Camera` VARCHAR(45) NOT NULL,
    `secondary_Camera` VARCHAR(45) NOT NULL,
    `Displaypannel` VARCHAR(20) NOT NULL,
    `Price` VARCHAR(45) NOT NULL,
    `image_url` VARCHAR(2000),
    `Available_colour` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);
   insert into mobiles values   (1,'poco x2','6GB','128GB','4700mah','6.7inch','64mp+12mp+8mp+5mp','20mp+2mp','IPS','17800','https://static-news.moneycontrol.com/static-mcnews/2020/02/Poco-X2-770x433.jpg','Red Blue Purple'),
  (2,'Redmi note 9 pro','6GB','64gb','4500mah','6.5inch','48mp+8mp+5mp+5mp','20mp','IPS','16000','https://images.moneycontrol.com/static-mcnews/2020/03/ES46Q6AUYAAep_Q-770x433.jpg','Blue Black White '),
  (3,'Onepus Nord','6GB','64GB','4000mah','6.5inch','48mp+8mp+5mp+5mp','20mp','Fluid Amoled','24000','https://www.gigantti.fi/image/dv_web_D180001002486835/196848/oneplus-nord-5g-aelypuhelin-12256gb-blue-marble.jpg?$prod_all4one$','Black Blue'),
  (4,'Samsung m31','6GB','64GB','6000mah','6.65inch','64mp+8mp+12mp+5mp','32mp','S-Amoled','19600','https://cdn.pocket-lint.com/r/s/1200x/assets/images/152001-phones-news-samsung-m31-image1-h2mnxzgnbt.jpg','Black Blue Red'),
  (5,'MI 10','8GB','128GB','4000mah','6.8inch','108mp+12mp+12mp+5mp','20mp','Fluid Amoled','24000','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8U1kToPpSEZpEkrcSKh7v-ITs-f4T7C6WSg&usqp=CAU' ,'Blue Black Orange'),
  (6,'Redmi k20pro','6GB','128gb','4000mah','6.5inch','48mp+8mp+5mp+5mp','20mp','Fluid Amoled','24000','https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-k20pro-1.jpg','Blue Black Red White');
 
select * from mobiles;
