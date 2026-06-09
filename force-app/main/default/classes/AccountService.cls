public with sharing class AccountService {

    // Method to fetch Accounts
    public static List<Account> getAccounts() {
        return [
            SELECT Id, Name, Industry
            FROM Account
            ORDER BY Name
        ];
    }

    // Method to create a new Account
    public static Account createAccount(String accountName, String industry) {

        Account acc = new Account();
        acc.Name = accountName;
        acc.Industry = industry;

        insert acc;

        return acc;
    }
}