//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Nadra{
    struct clientData {
        string  Name;
         address Address;
         uint CNIC;
         string DOB;
         string TreeNumber ;       
    }
   uint private userCount;
 mapping(uint => clientData) private clientDetails;
 

    function addDetails(
    
    string memory _name
    ,address _address,
    uint _cnic,
    string memory _dob,
    string memory _treeNum)public{
        userCount++;
    clientDetails[userCount] =  clientData(_name,_address,_cnic,_dob,_treeNum);
            // emit sellerRegistration(msg.sender, _name, _cnic);
        
    }

 function getDetailsbyId(uint id) public view returns(clientData memory){
     return clientDetails[id];
      
    }

    function getAllDetails()public view returns (clientData[] memory){
        clientData[] memory getDetails = new clientData[](userCount);

        for(uint i=1; i< userCount;i++){
            getDetails[i] = clientDetails[i];
        }

        return getDetails;

    }
}