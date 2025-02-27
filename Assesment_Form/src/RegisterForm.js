import React, { useState } from 'react'
import UseCustomhook from './CustomHook';

export default function RegisterForm() {
    const [email, setemail, password, setpassword, repassword, setrepassword, fname, setfname, lname, setlname, Phone, setphone, address, setaddress, region, setregion, pincode, setpincode, country, setcountry, CheckData] = UseCustomhook();
    return (
        <div>
            {/* <h1>RegisterForm</h1> */}
            <div className="container mt-4 ">
                <div className='row justify-content-center'>
                    <div className='col-lg-6'>
                        <div className='card bg-secondary'>
                            <div className='text-start'>
                                <h2 className="">Register Here</h2>
                                <h2 className="">User Registration</h2>
                            </div>
                            <p className="text-muted text-start">Fields marked * are required</p>
                            <form className="mx-auto">
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Email *</label>
                                    <input value={email} onChange={(e) => setemail(e.target.value)} type="email" className="" required />
                                </div>
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Password *</label>
                                    <input value={password} onChange={(e) => setpassword(e.target.value)} type="password" className=" " required />
                                </div>
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Retype Password *</label>
                                    <input value={repassword} onChange={(e) => setrepassword(e.target.value)} type="password" className=" " required />
                                </div>
                                <div className="">
                                    <div className=" mb-3 d-flex gap-3">
                                        <label className="form-label">First Name *</label>
                                        <input value={fname} onChange={(e) => setfname(e.target.value)} type="text" className=" " required />
                                    </div>
                                    <div className="mb-3 d-flex gap-3">
                                        <label className="form-label">Last Name *</label>
                                        <input value={lname} onChange={(e) => setlname(e.target.value)} type="text" className=" " required />
                                    </div>
                                </div>
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Phone Number *</label>
                                    <input value={Phone} onChange={(e) => setphone(e.target.value)} type="text" className=" " required />
                                </div>
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Address *</label>
                                    <input value={address} onChange={(e) => setaddress(e.target.value)} type="text" className=" " required />
                                </div>
                                
                                    <div className=" mb-3 d-flex gap-3">
                                        <label className="form-label">Region *</label>
                                        <input value={region} onChange={(e) => setregion(e.target.value)} type="text" className=" " required />
                                    </div>
                                    <div className=" mb-3 d-flex gap-3">
                                        <label className="form-label">Postcode / Zip *</label>
                                        <input value={pincode} onChange={(e) => setpincode(e.target.value)} type="text" className=" " required />
                                    </div>
                                
                                <div className="mb-3 d-flex gap-3">
                                    <label className="form-label">Country *</label>
                                    <select value={country} onChange={(e) => setcountry(e.target.value)} className=" " required>
                                        <option hidden>Select Country</option>
                                        <option value="USA">United States</option>
                                        <option value="Canada">Canada</option>
                                        <option value="India">India</option>
                                        <option value="UK">United Kingdom</option>
                                        <option value="Australia">Australia</option>
                                    </select>
                                </div>
                                <button type="button" onClick={CheckData} className="btn btn-success w-50 my-3 fw-semibold">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        
        </div>
    )
}
