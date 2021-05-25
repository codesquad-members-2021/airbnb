import Main from "components/main/Main";
import useAxios from "hooks/useAxios";
const Home = () => {
  const res = useAxios(
    "http://13.209.33.94:8080/price?checkin=2021-06-01&checkout=2021-06-14&fraction=10"
  ,"get");
  console.log(res);
  return (
    <>
      <Main />
    </>
  );
};

export default Home;
