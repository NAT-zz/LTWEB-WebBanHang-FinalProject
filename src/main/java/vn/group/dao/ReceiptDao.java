package vn.group.dao;

import java.util.List;

import vn.group.model.ReceiptDetailModel;
import vn.group.model.ReceiptModel;

public interface ReceiptDao {
	Boolean insert(ReceiptDetailModel receipt);
	ReceiptModel getReceiptById(int id);
	ReceiptModel insertReceipt(ReceiptModel receipt);
	List<ReceiptDetailModel> getReceiptByUser(int id);
	List<ReceiptModel> getReceipt(int id);
	ReceiptModel getReceipt();
	
}
