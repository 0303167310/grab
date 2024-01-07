import { collection, onSnapshot } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-firestore.js";
import { db } from "../../js/firebase.js";

// count total number of customers and rides
const customerRef = collection(db, "customers");
const rideRef = collection(db, "rides");

function countDoc(ref, callback) {
    const unsubscribe = onSnapshot(ref, (querySnapshot) => {
        const count = querySnapshot.size;
        callback(count);
    });
    return unsubscribe;
}

function displayTotalCustomers() {
    countDoc(customerRef, (count) => {
        document.getElementById("total-customers").innerHTML = `<b>${count} khách hàng</b>`;
    })
    const unsubscribe = countDoc(customerRef, (count) => {
        document.getElementById("total-customers").innerHTML = `<b>${count} khách hàng</b>`;
    });
    return unsubscribe;
}

function displayTotalRides() {
    countDoc(rideRef, (count) => {
        document.getElementById("total-rides").innerHTML = `<b>${count} chuyến đi</b>`;
    })
    const unsubscribe = countDoc(rideRef, (count) => {
        document.getElementById("total-rides").innerHTML = `<b>${count} chuyến đi</b>`;
    });
    return unsubscribe;
}

displayTotalCustomers();
displayTotalRides();

// display rides
function displayRidesTable() {
    const resultContainer = document.getElementById("ride-table");
    // Create the table header
    const table = document.createElement('table');
    table.innerHTML = `
      <thead>
        <tr>
            <th>ID chuyến xe</th>
            <th>Tên khách hàng</th>
            <th>Tổng tiền</th>
            <th>Trạng thái</th>
        </tr>
      </thead>
      <tbody id="ride-table-body"></tbody>
    `;
  
    // Append the table to the result container
    resultContainer.appendChild(table);
  
    // Update the table body with ride information
    const updateTable = (rides) => {
      const tableBody = document.getElementById('ride-table-body');
      tableBody.innerHTML = '';
  
      rides.forEach((ride) => {
        const row = tableBody.insertRow();
        row.innerHTML = `
          <td>${ride.id}</td>
          <td>${ride.customerId}</td>
          <td>${ride.fare}</td>
          <td>${ride.status}</td>
        `;
      });
    };
  
    const unsubscribe = onSnapshot(rideRef, (querySnapshot) => {
      const rides = [];
      querySnapshot.forEach((doc) => {
        rides.push(doc.data());
      });
  
      updateTable(rides);
    }, (error) => {
      console.error('Error fetching and updating rides table:', error);
    });
  
    return unsubscribe;
  }

displayRidesTable();