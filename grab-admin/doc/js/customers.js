import { collection, onSnapshot, doc, where, query, updateDoc } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-firestore.js";
import { db } from "../../js/firebase.js";

const customerRef = collection(db, "customers");
const q = query(customerRef, where("isDeleted", "==", false));

export async function deleteCustomerDoc(id){
  const customer = doc(db, "customers", id);
  // set the isDeleted field to true
  try {
    await updateDoc(customer, { isDeleted: true });
  } catch (error) {
    console.error('Error deleting the customer!', error);
  }
}

function displayCustomersTable() {
    const resultContainer = document.getElementById("sampleTable");
    // Create the table header
    const table = document.createElement('table');
    table.innerHTML = `
        <thead>
            <tr>
            <th width="10"><input type="checkbox" id="all"></th>
            <th>ID khách hàng</th>
            <th width="150">Họ và tên</th>
            <th width="300">Địa chỉ</th>
            <th>SĐT</th>
            <th width="100">Tính năng</th>
            </tr>
        </thead>
        <tbody id="customer-table-body"></tbody>
    `;
  
    // Append the table to the result container
    resultContainer.appendChild(table);
  
    // Update the table body with customer information
    const updateTable = (customers) => {
      const tableBody = document.getElementById('customer-table-body');
      tableBody.innerHTML = '';
  
      customers.forEach((customer) => {
        const row = tableBody.insertRow();
        row.innerHTML = `
        <td width="10"><input type="checkbox"></td>
        <td>${customer.id}</td>
        <td>${customer.name}</td>
        <td>${customer.address ? customer.address.stringName : 'Unknown'}</td>
        <td>${customer.phoneNumber}</td>
        <td><button class="btn btn-primary btn-sm trash" type="button" title="Delete"
            onclick= "deleteCustomer(this)"><i class="fas fa-trash-alt"></i>
          </button>
          <button class="btn btn-primary btn-sm edit" type="button" title="Modify" id="show-emp"
            data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
          </button>
        </td>
        `;
      });
    };
  
    const unsubscribe = onSnapshot(q, (querySnapshot) => {
      const customers = [];
      querySnapshot.forEach((doc) => {
        customers.push(doc.data());
      });
  
      updateTable(customers);
    }, (error) => {
      console.error('Error fetching and updating customers table:', error);
    });
  
    return unsubscribe;
}

displayCustomersTable();

