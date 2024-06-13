# SQL

## Database

- Database is a special software used to store the data
- cloud is a renting pc's it will rent systems only
- why renting is better than buying servers or cloud db
  - high intial cost
  - Rent room
  - A/C are required for cooling purpose
  - electricity bill
  - Maintance
  - Spares
  - Generators if power is lost
- this are the disadvantages casued to maintain servers or dabatabes ourselves

- Disaster management - to how prevent the servers from the disasters
  - place the servers in the safe palce where disasters won't happen much lis floods,tsunami,earthquakes
  - backup
- Linux is used as an operaring system in cloud because it is
  - free
  - open source
  - secure
  - smaller footprint - for installing the linux it takes 256-512 Mb which makes lesser money
  - Automation

## Scaling

- vertical Scaling -- increasing the ram or cpu's upgrade making powerfull the system so that more people can access

- horizantal Scaling -- here system power is not increased ,just use multiple systems

- Auto Scaling -- will use the extra system accordingly as load increases extra pc or systems increases and rent will be paid for the usage and decreses as well accordingly.
- making autoscaling switch on 24/7 then the compitators company will sends the fake traffic which makes that company to pay more rent which cause them bankrupt.

- solution --- change the direction of the traffic i.e change the fake traffic directions.

## Why Database

- for fast searching because in system if the data is stored and then to fetch that data if the data is in RAM then it will give the results and if the data is not in RAM then it will search in HDD and give it to the user which increases the time thats why the database a special software is used.
- If we want to search for a particular line using explorer it is difficult to search thats why database is used.

## features of Database

- Database --- frequently asked it will have it in RAM
- Querying becomes easier
- CRUD - easy
- Backups are inbuilt
- UNDO -easiy(time limit)
- Performance

### Sql Vs NoSql

- sql stores the data in tabular format

  ex: MySql,PLSql(oracle),PostgreSql,Amazon RDS

- NoSql stores the data in documents

  ex: Dynamo DB,Mongo DB,Firebase,Redis,Couch DB,cassanadra.

- redis is used for fast retirveal i.e catch but used with another database.

## Normalization

- to increase the security normalization is used.
- managing the data will be easy work will be decreased.
- messing of data is reduced.

### 1NF

- rules of 1NF

  ![alt text](image-3.png)

### 2NF

- non key values should depend on entire combined primary key.
- it should be in 1NF and 2 NF.
- upadating will be decreased.

### 3NF

- reduce the dependencies
- decreases the upadates times
- here in the below table two upadatesare required so reduced it to one update so the coloum is dependent on the intercolumn so that coloumn is deleted so that the coloumn is deleted. and in the new table the data is not much dependent i.e it means the data is upadated only once.
- Every non-key attribute in a table should depend on the key,the whole key,and nothing but primary key. ANd primary key should be also depend on the primary key

![alt text](image-4.png)

![alt text](image-5.png)

## Joins

- Joins is used to get the results from the normalized tables.

![alt text](image-6.png)

- inner join : It will get the common items of a and b.

- outer join : It will get the non common items.
- left join : It gives common items of a & b and extra items of a.
- Right join : It gives common items of a & b and extra items of b.

* joining primary key= foriegn key.

![alt text](image-7.png)

![alt text](image-8.png)

## Aggregation Functions

-![alt text](image-9.png)
