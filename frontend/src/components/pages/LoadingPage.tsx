import { useEffect } from 'react';
import styled from "styled-components";


const LoadingPage = () => {
  const getToken = () => {
    const params = new URLSearchParams(window.location.search);
    const code = params.get('code');
    fetch('http://localhost:8080/api/auth', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${localStorage.getItem('token')}`
       },
        body: JSON.stringify({ code })
    }).then(response => response.json())
    .then(({ token }) => {
        console.log("token입니다: ", token);
        localStorage.setItem('token', token);
        //mainpage로 돌아가는 로직 필요
    });
  }

  useEffect(() => {
   getToken();
  }, [])


  return (
    <Test>
      <img src="https://thumbs.gfycat.com/GeneralUnpleasantApisdorsatalaboriosa-max-1mb.gif"/>
    </Test>
  );
};

const Test = styled.div`
  display: flex;
  justify-content: center;
  width: 100%;
  height: 100%;
  padding-top: 30rem;

  & > img {
  }
`;

export default LoadingPage;
