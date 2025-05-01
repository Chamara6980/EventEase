<!DOCTYPE html>  
<html>  
<head>  
  <meta charset="UTF-8" />  
  <title>Package Table with Addable Items</title>  
  <style>  
  /* Reset some default styles */  
body {  
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  
  background-color: #f9f9f9;  
  padding: 20px;  
  color: #333;  
}  

h2 {  
  color: #2c3e50;  
  margin-bottom: 10px;  
}  

/* Style the add button */  
button {  
  background-color: #4CAF50;  
  color: white;  
  border: none;  
  padding: 8px 12px;  
  border-radius: 4px;  
  cursor: pointer;  
  font-size: 14px;  
  transition: background-color 0.3s;  
}  
button:hover {  
  background-color: #45a049;  
}  

/* Style the submit button */  
input[type="submit"] {  
  background-color: #3498db;  
  margin-top: 15px;  
  padding: 10px 20px;  
  font-size: 16px;  
}  
input[type="submit"]:hover {  
  background-color: #2980b9;  
}  

/* Style the table */  
#packageTable {  
  width: 100%;  
  border-collapse: collapse;  
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);  
  border-radius: 8px;  
  overflow: hidden;  
  background-color: #fff;  
}  

#packageTable th, #packageTable td {  
  padding: 12px 15px;  
  text-align: left;  
}  

#packageTable thead {  
  background-color: #34495e;  
  color: #fff;  
}  

#packageTable tbody tr:nth-child(even) {  
  background-color: #f2f2f2;  
}  

/* Style input fields */  
input[type="text"] {  
  width: 100%;  
  padding: 8px 10px;  
  border: 1px solid #ccc;  
  border-radius: 4px;  
  font-size: 14px;  
  box-sizing: border-box;  
  transition: border-color 0.2s;  
}  

input[type="text"]:focus {  
  border-color: #4CAF50;  
  outline: none;  
}  

/* Style item container and input */  
.item-row {  
  display: flex;  
  align-items: center;  
  margin-top: 5px;  
}  

.item-input {  
  flex: 1;  
  padding: 6px 10px;  
  border: 1px solid #bbb;  
  border-radius: 4px;  
  font-size: 13px;  
}  

.remove-item-btn {  
  background-color: #e74c3c;  
  margin-left: 8px;  
  padding: 4px 8px;  
  border: none;  
  border-radius: 50%;  
  color: #fff;  
  cursor: pointer;  
  font-size: 14px;  
  line-height: 1;  
  transition: background-color 0.3s;  
}  

.remove-item-btn:hover {  
  background-color: #c0392b;  
}  

/* Style add item button */  
.add-item-btn {  
  background-color: #3498db;  
  margin-left: 10px;  
  padding: 4px 10px;  
  border: none;  
  border-radius: 4px;  
  color: #fff;  
  font-size: 18px;  
  cursor: pointer;  
  line-height: 1;  
  transition: background-color 0.3s;  
}  

.add-item-btn:hover {  
  background-color: #2980b9;  
}  

  </style>  
</head>  
<body>  
  <h2>Package Table</h2>  
  <button type="button" onclick="addRow()">Add Package Row</button>  
  <br><br>  
  <form action="#" method="post">  
    <table id="packageTable">  
      <thead>  
        <tr>  
          <th>PackageID</th>  
          <th>PackageName</th>  
          <th>Type</th>  
          <th>Venue</th>  
          <th>Items</th>  
        </tr>  
      </thead>  
      <tbody>  
        <!-- Rows will be added here -->  
      </tbody>  
    </table>  
    <br>  
    <input type="submit" value="Submit" />  
  </form>  

  <script>  
    function addRow() {  
      const tableBody = document.getElementById('packageTable').getElementsByTagName('tbody')[0];  

      const row = document.createElement('tr');  

      // Package info cells  
      row.insertCell().innerHTML = '<input type="text" name="packageID[]" required>';  
      row.insertCell().innerHTML = '<input type="text" name="packageName[]" required>';  
      row.insertCell().innerHTML = '<input type="text" name="type[]" required>';  
      row.insertCell().innerHTML = '<input type="text" name="venue[]" required>';  

      // Items cell  
      const itemsCell = row.insertCell();  
      const uniqueId = 'itemsDiv_' + Date.now() + Math.floor(Math.random() * 1000);  

      // Container for items  
      const itemsDiv = document.createElement('div');  
      itemsDiv.id = uniqueId;  
      // Add initial item input  
      addItemFieldToDiv(itemsDiv, uniqueId);  
      
      // Append the container and add button  
      itemsCell.appendChild(itemsDiv);  
      
      const addBtn = document.createElement('button');  
      addBtn.type = 'button';  
      addBtn.className = 'add-item-btn';  
      addBtn.innerText = '+';  
      addBtn.onclick = () => addItemFieldToDiv(itemsDiv, uniqueId);  
      itemsCell.appendChild(addBtn);  

      tableBody.appendChild(row);  
    }  

    function addItemFieldToDiv(div, divId) {  
      const itemDiv = document.createElement('div');  
      itemDiv.className = 'item-row';  

      const input = document.createElement('input');  
      input.type = 'text';  
      input.name = `items_${divId}[]`;  
      input.className = 'item-input';  
      input.placeholder = 'Item';  

      const removeBtn = document.createElement('button');  
      removeBtn.type = 'button';  
      removeBtn.className = 'remove-item-btn';  
      removeBtn.innerText = '×'; // Cross symbol for delete  
      removeBtn.onclick = () => div.removeChild(itemDiv);  

      itemDiv.appendChild(input);  
      itemDiv.appendChild(removeBtn);  
      
      div.appendChild(itemDiv);  
    }  
  </script>  
</body>  
</html>  