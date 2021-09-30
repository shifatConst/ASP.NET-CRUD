--sp for setup a product table.
create proc ProductSerup_SP
@ProductID int,
@ItemName nvarchar(50),
@Specification nvarchar(150),
@Unit nvarchar(30),
@Status nvarchar(30),
@CreationDate datetime
as
begin
Insert into ProductSetup_Tab (ProductID, ItemName, Specification, Unit, Status, CreationDate) values (@ProductID, @ItemName, @Specification, @Unit, @Status, @CreationDate)
end

exec ProductSerup_SP 1001, 'Laptop', 'Dell Core i 7', 'PCS', 'Running', '1/1/2021'

--sp for get all the data
create proc ProductList_SP
as
begin
select * from ProductSetup_Tab
end

exec ProductList_SP

--sp for update a product
create proc ProductUpdate_SP
@ProductID int,
@ItemName nvarchar(50),
@Specification nvarchar(150),
@Unit nvarchar(30),
@Status nvarchar(30),
@CreationDate datetime
as
begin
update ProductSetup_Tab set ItemName= @ItemName, Specification= @Specification, Unit= @Unit, Status= @Status, CreationDate= @CreationDate where ProductID= @ProductID
end

--sp for delete a product using product id
create proc ProductDelete_SP
@ProductID int
as
begin
delete ProductSetup_Tab where ProductID= @ProductID
end

--sp for search a product using product id
create proc ProductSearch_SP
@ProductID int
as
begin
select * from ProductSetup_Tab where ProductID= @ProductID
end
