import { getApi } from "@/Utils/api";

interface MainData {
  heroImage: string;
  cities: Array<object>;
  categories: Array<object>;
}

type Resolve = (mainPage: MainData | null) => void;
type Reject = (err: object | null) => void;

const getMainData = async (setDataFn: Resolve, setErrorFn: Reject) => {
  await getApi
    .main()
    .then((res) => res.json())
    .then((json) => {
      if (json && json.mainPage) {
        setDataFn(json.mainPage);
      } else throw Error();
    })
    .catch((err) => setErrorFn(err));
};

export { getMainData };
