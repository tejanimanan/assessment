import { useState } from "react"

function UseCustomhook() {
    const [email, setemail] = useState('')
    const [password, setpassword] = useState('')
    const [repassword, setrepassword] = useState('')
    const [fname, setfname] = useState('')
    const [lname, setlname] = useState('')
    const [Phone, setphone] = useState('')
    const [address, setaddress] = useState('')
    const [region, setregion] = useState('')
    const [pincode, setpincode] = useState('')
    const [country, setcountry] = useState('')
    const CheckData = () => {
        if (email === '' || password === '' || repassword === '' || fname === '' || lname === '' || Phone === '' || pincode === '' || region === '' || address === '' || country === '') {
           alert("Enter Data in input box")
            
           
        } 
        else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
            alert("Enter valid Email")
        } 
        else if (password !== repassword) {
           alert("password not match each other")
        }
        else if (!/^\+?[1-9]\d{1,14}$/.test(Phone)) {
            alert("Enter Proper Number")
        }
        else if (fname.length < 4) {
            alert("Name must be atlest 4 char")
        }
        
        
        
        else{
            alert("Data added successfully")
                setemail('');
                setpassword('');
                setrepassword('');
                setfname('');
                setlname('');
                setphone('');
                setaddress('');
                setregion('');
                setpincode('');
                setcountry('');

        }
    }
    return [email, setemail, password, setpassword, repassword, setrepassword, fname, setfname, lname, setlname, Phone, setphone, address, setaddress, region, setregion, pincode, setpincode, country, setcountry,CheckData]
}

export default UseCustomhook;