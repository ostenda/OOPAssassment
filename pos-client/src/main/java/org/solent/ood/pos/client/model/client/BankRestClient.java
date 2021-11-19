/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.ood.pos.client.model.client;

    import org.solent.ood.pos.client.dto.CreditCard;
    import org.solent.ood.pos.client.dto.TransactionReplyMessage;

/**
 *
 * @author winbl
 */
public interface BankRestClient {
    public  TransactionReplyMessage transferMoney(CreditCard fromCard, CreditCard toCard, Double amount);

    public  TransactionReplyMessage transferMoney(CreditCard fromCard, CreditCard toCard, Double amount, String userName, String password);
}

