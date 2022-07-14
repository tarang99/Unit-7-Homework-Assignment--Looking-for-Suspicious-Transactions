# Unit 7 Homework Assignment: Looking for Suspicious Transactions

Data Modeling
File (Database ERD.png) shows the ERD daigram for the tables link.


Data Engineering
Created table relationship, specified data types, defined primary and foreign keys.

Data Analysis
1. How can you isolate (or group) the transactions of each cardholder?
    We can group each cardholder by considering the relationship between tables. First we must group the transcation table as it coints all the details, next we must go through the credit_card table which holder_id and credit card number and then link the card_holder table to names.


2. Count the transactions that are less than $2.00 per cardholder?
    Querry 'small_transaction' shows the details. Megan Price has the highest amount of small transactions. 

3. Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
    Megan and Stepahnie could be the victim of fraud as thier card is used several times for small and similar purchase amount.

4. What are the top 100 highest transactions made between 7:00 am and 9:00 am?
    Querry 'highest_between_7_9' shows the details. 12 transactions are more than $100. 

5. Do you see any anomalous transactions that could be fraudulent?
    Most of the high amount transactions are for pubs and bar but the at this time of the day, it is kind of red flag for cards being used at bars and pubs early in the morning. 

6. Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
    Yes, by looking at the data we can assume that higher number of fraudulent transactions made during this time frame versus the rest of the day as it is hard to accept that such huge transactions take place early in the morning at such places. There could be various reasons for such transactions taking place during this time as the cardholders won't notice the notification early in the morning, or the hackers could be located in different part of the world and time difference could be the reason.

7. What are the top 5 merchants prone to being hacked using small transactions?
    Using querry 'small_transactions_merchants'
    Wood-Ramirez
    Hood-Phillips
    Baker Inc
    Riggs-Adams
    Reed Group

8. Create a view for each of your queries.
    Following views for the queries were created:
    small_transaction
    highest_between_7_9
    small_transactions_merchants



