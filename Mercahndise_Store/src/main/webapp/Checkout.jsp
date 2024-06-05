<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Out</title>
<style>




@import url('https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap');



body {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #C1BFFA;
  font-family: inter, sans-serif;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 30px;
  padding-bottom: 30px;
  
  margin-top: 50px;
  margin-bottom: 80px;

  position: relative;
  width: 48vw;
  height: auto;

  border-radius: 16px;
  background-color: white;
  
  border: 2px solid #1B1B1B;
  box-sizing: border-box;
  box-shadow: 6px 6px 0px #1B1B1B;
  border-radius: 8px;
}

.heading {
  display: flex;
  flex-direction: row;
  align-items: center;
}

#exit {
  align-self: flex-end;
}

h1 {
  margin-left: 10px;
  font-size: 2rem;
  font-weight: 800;
}

label {
  font-weight: 600;
}

input {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  margin-top: 10px;
  padding: 16px 24px;
  width: 90%;
  height: 15%;
  left: 1048px;
  top: 16px;
  background: #FFFFFF;
  border: 2px solid #1B1B1B;
  box-sizing: border-box;
  border-radius: 16px;
  transition: 0.2s;
}

textarea:focus, input:focus{
  outline: none;
  background: #F9E450;
  border: 3px solid #1B1B1B;
  border-radius: 16px;
}

.exp-cvc {
  justify-self: center;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 90%;
}

.expiration {
  font-size: 0.75rem;
  width: 50%;
  margin-right: 20px;
}

.security {
  font-size: 0.75rem;
  width: 50%;
  margin-left: 20px;
}

span {
  padding-left: 5px;
  cursor: pointer;
}

.btn {
  background-color: #F9E450;
  border: 2px solid #1B1B1B;
  box-sizing: border-box;
  border-radius: 16px;
  padding: 16px 32px 16px 16px;
  text-align: center;
  font-weight: 800;
  margin-top: 20px;
  
  width: 141px;
  height: 56px;
  left: 16px;
  top: 88px;
  
  display: flex;
  flex-direction: row;
  align-items: center;
  align-self: flex-end;
  cursor: pointer;
  transition: 0.16s ease-out;
}

.btn:hover {
  background: #FFBB38;
  border: 4px solid #1B1B1B;
  box-sizing: border-box;
  box-shadow: 0px 0px 0px 4px #C1BFFA;
  border-radius: 16px;
}

#exit {
  cursor: pointer;
}


/* CSS */
.button-19 {
  appearance: button;
  background-color: #1899D6;
  border: solid transparent;
  border-radius: 16px;
  border-width: 0 0 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: din-round,sans-serif;
  font-size: 15px;
  font-weight: 700;
  letter-spacing: .8px;
  line-height: 20px;
  margin: 0;
  outline: none;
  overflow: visible;
  padding: 13px 16px;
  text-align: center;
  text-transform: uppercase;
  touch-action: manipulation;
  transform: translateZ(0);
  transition: filter .2s;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: middle;
  white-space: nowrap;
  width: 100%;
}

.button-19:after {
  background-clip: padding-box;
  background-color: #1CB0F6;
  border: solid transparent;
  border-radius: 16px;
  border-width: 0 0 4px;
  bottom: -4px;
  content: "";
  left: 0;
  position: absolute;
  right: 0;
  top: 0;
  z-index: -1;
}

.button-19:main,
.button-19:focus {
  user-select: auto;
}

.button-19:hover:not(:disabled) {
  filter: brightness(1.1);
  -webkit-filter: brightness(1.1);
}

.button-19:disabled {
  cursor: auto;
}

.button-19:active {
  border-width: 4px 0 0;
  background: none;
}
</style>
</head>
<body>
 <form action="Card" method="get">
<div class="main">
  
<div class="container">
    <svg id="exit" width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.35288 8.95043C4.00437 6.17301 6.17301 4.00437 8.95043 3.35288C10.9563 2.88237 13.0437 2.88237 15.0496 3.35288C17.827 4.00437 19.9956 6.17301 20.6471 8.95044C21.1176 10.9563 21.1176 13.0437 20.6471 15.0496C19.9956 17.827 17.827 19.9956 15.0496 20.6471C13.0437 21.1176 10.9563 21.1176 8.95044 20.6471C6.17301 19.9956 4.00437 17.827 3.35288 15.0496C2.88237 13.0437 2.88237 10.9563 3.35288 8.95043Z" stroke="#1B1B1B" stroke-width="1.5"/>
<path d="M13.7678 10.2322L10.2322 13.7678M13.7678 13.7678L10.2322 10.2322" stroke="#1B1B1B" stroke-width="1.5" stroke-linecap="round"/></svg>

<div class="heading">
  <svg width="28" height="28" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.3986 7.64605C13.495 7.37724 13.88 7.37724 13.9764 7.64605L14.2401 8.38111C14.271 8.46715 14.3395 8.53484 14.4266 8.56533L15.1709 8.82579C15.443 8.92103 15.443 9.30119 15.1709 9.39644L14.4266 9.65689C14.3395 9.68738 14.271 9.75507 14.2401 9.84112L13.9764 10.5762C13.88 10.845 13.495 10.845 13.3986 10.5762L13.1349 9.84112C13.104 9.75507 13.0355 9.68738 12.9484 9.65689L12.2041 9.39644C11.932 9.30119 11.932 8.92103 12.2041 8.82579L12.9484 8.56533C13.0355 8.53484 13.104 8.46715 13.1349 8.38111L13.3986 7.64605Z" fill="#1B1B1B"/>
<path d="M16.3074 10.9122C16.3717 10.733 16.6283 10.733 16.6926 10.9122L16.8684 11.4022C16.889 11.4596 16.9347 11.5047 16.9928 11.525L17.4889 11.6987C17.6704 11.7622 17.6704 12.0156 17.4889 12.0791L16.9928 12.2527C16.9347 12.2731 16.889 12.3182 16.8684 12.3756L16.6926 12.8656C16.6283 13.0448 16.3717 13.0448 16.3074 12.8656L16.1316 12.3756C16.111 12.3182 16.0653 12.2731 16.0072 12.2527L15.5111 12.0791C15.3296 12.0156 15.3296 11.7622 15.5111 11.6987L16.0072 11.525C16.0653 11.5047 16.111 11.4596 16.1316 11.4022L16.3074 10.9122Z" fill="#1B1B1B"/>
<path d="M17.7693 3.29184C17.9089 2.90272 18.4661 2.90272 18.6057 3.29184L19.0842 4.62551C19.1288 4.75006 19.2281 4.84805 19.3542 4.89219L20.7045 5.36475C21.0985 5.50263 21.0985 6.05293 20.7045 6.19081L19.3542 6.66337C19.2281 6.7075 19.1288 6.80549 19.0842 6.93005L18.6057 8.26372C18.4661 8.65284 17.9089 8.65284 17.7693 8.26372L17.2908 6.93005C17.2462 6.80549 17.1469 6.7075 17.0208 6.66337L15.6705 6.19081C15.2765 6.05293 15.2765 5.50263 15.6705 5.36475L17.0208 4.89219C17.1469 4.84805 17.2462 4.75006 17.2908 4.62551L17.7693 3.29184Z" fill="#1B1B1B"/>
<path d="M3 13.4597C3 17.6241 6.4742 21 10.7598 21C14.0591 21 16.8774 18.9993 18 16.1783C17.1109 16.5841 16.1181 16.8109 15.0709 16.8109C11.2614 16.8109 8.17323 13.8101 8.17323 10.1084C8.17323 8.56025 8.71338 7.13471 9.62054 6C5.87502 6.5355 3 9.67132 3 13.4597Z" stroke="#1B1B1B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
  <h1>Payment details</h1>

  </div>
  
  <label for="name">Name</label>
  
    <input type="text" id="name" name="name" placeholder="Name"/>
  <br>
  <label for="card">Card number</label>
    <input type="text" minlength="16" maxlength="16" id="card" name="card" placeholder="0000 0000 0000 0000"/>
  <br>
  <div class="exp-cvc">
    <div class="expiration">
  <label for="expiry">Expiration Month</label>
    <input class="inputCard" name="expiration-month" id="experation-month" type="text" required placeholder="00"/>
    <br>
    </div>
    <div class="expiration">
  <label for="expiry">Expiration year</label>
    <input class="inputCard" name="experation-year" id="experation-year" type="text" required placeholder="0000"/>
    <br>
    </div>
    <div class="security">
  <label for="cvc">CVC</label>
    <input type="text" minlength="3" maxlength="4" id="cvc" name="cvc" placeholder="XXX" />
  <br>
    </div>
  </div>
<div >


  <button class="button-19" role="button"  type="submit">Submit</button>
</div>
</div>
</div>
</form>
</body>
</html>