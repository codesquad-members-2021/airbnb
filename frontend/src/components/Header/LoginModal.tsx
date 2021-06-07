import styled from "styled-components";

const LoginModal = () => {
  const token = localStorage.getItem("token");
  const menuListText = !token ? "🐹 동물의 세계로 로그인"
  : (() => {
    const parsedToken = token && atob(token.split('.')[1]);
    const {name, login} = JSON.parse(parsedToken);
    return `${name}님 안녕하세요.`;
  })();

  const menuList = [
    {
      text: menuListText,
      url:
        "https://github.com/login/oauth/authorize?client_id=5064f641a3bfe7f785ab",
    },
    {
      text: "🐊 현실세계로 복귀",
      url: "https://lucas.codesquad.kr/masters-2021/course/%EB%A7%88%EC%8A%A4%ED%84%B0%EC%A6%88-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-2021/%EC%88%99%EC%86%8C%EC%98%88%EC%95%BD-%EC%84%9C%EB%B9%84%EC%8A%A4/%EA%B3%B5%ED%86%B5-%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD",
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
        <li key={`menu-idx}`}>
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
