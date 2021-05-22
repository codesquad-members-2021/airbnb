import { useEffect } from 'react';
import styled from "styled-components";
import { ReactComponent as Menu } from 'image/menu.svg';
import { ReactComponent as Login } from 'image/login.svg';


const Mainpage = ({link}) => {

  // const getToken = () => {
  //   // const params = new URLSearchParams(window.location.search);
  //       const code = "261ac6065884d19df5a7"
  //       console.log("code",code);
  //       fetch('https://github.com/login/oauth/access_token', {
  //           method: 'POST',
  //           headers: { 'Content-Type': 'application/json' },
  //           body: JSON.stringify({ code })
  //       }).then(response => response.json())
  //       .then(({ token }) => {
  //           console.log(token)
  //           // localStorage.setItem('token', token);
  //           // location.href = 'http://localhost:8080/home.html';
  //       });
  // }

  // useEffect(() => {
  //  getToken();
  // }, []) 

  return (
    <MainpageLayout>
      <Hamburger link={link}>
        <Menu className="menu"/>
        <Login className="login"/>
      </Hamburger>
    </MainpageLayout>
  )
};

const MainpageLayout =  styled.div`
  display: flex;
`

const Hamburger = styled.a.attrs((props) => ({
  href: props.link,
}))`
  width: 76px;
  height: 40px;
  border: 1px solid #DDDDDD;
  border-radius: 30px;
  color: #555;
  text-align: center;
  cursor: pointer;
  padding: 5px 5px 5px 12px;
  display: flex;
  align-items: center;

  .menu {
    padding: 8px;
  }

  .login {
    padding: 8px;
  }

`


export default Mainpage;
