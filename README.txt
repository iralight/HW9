Please run migrations in the following order:
create_users
create_cards
create_products
create_orders
add_quantity_to_order_product
add_user_id_to_card
rename_type_to_card_type_in_cards
create_order_products

Validations - I was not able to display messages for validations, just add validations. I have emailed you about the syntax - not sure what is wrong with the message validations. So I just left them commented out for now.

User 
name:string 
email:string
password:string

Card 
number:integer
exp_date:string
card_type:string
user_id from User

Product 
name:string
price:float

Order 
order_date:string

OrderProduct (I decided to make this a has_many_through table because a has_many_to_many join table does not allow for a field not shared by 2 other tables, in this case quantity)
product_id from Product - validates presence
order_id from Order - validates presence
quantity - validates presence

