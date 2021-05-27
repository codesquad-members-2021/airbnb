import styled from "styled-components";

const LoginModal = () => {
  const menuList = [
    {
      text: "Github으로 로그인하기",
      url:
        "https://github.com/login/oauth/authorize?client_id=5064f641a3bfe7f785ab",
    },
    {
      text: "Google로 로그인하기",
      url: "",
    },
    {
      text: "예약 취소",
      url: "",
    },
    {
      text: "위시 리스트",
      url: "",
    },
  ];
  return (
    <LoginModalLayout className="login-modal">
      {menuList.map((el, idx) => (
        <li key={`menu-${idx}`}>
          <a href={el.url}>{el.text}</a>
        </li>
      ))}
    </LoginModalLayout>
  );
};

const LoginModalLayout = styled.ul`
  position: absolute;
  margin-top: 1.6rem;
  right: 0%;
  width: 250px;
  background-color: #fff;
  border-radius: 15px;
  border: 1px solid #dddddd;
  cursor: pointer;
  box-shadow: rgb(0 0 0 12%) 0px 2px 16px;
  list-style: none;
  padding: 1.6rem 2rem;
  font-size: 1.6rem;
  z-index: 99;

  & > li {
    padding: 1.6rem 0;
    &:not(:last-child) {
      border-bottom: 1px solid #c4c4c4;
    }
    a {
      text-decoration: none;
    }
    a:visited {
      color: #333;
    }
  }
`;

export default LoginModal;
