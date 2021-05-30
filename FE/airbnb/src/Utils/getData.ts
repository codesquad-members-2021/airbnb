import { getAPI } from "@/Utils/api";

interface MainData {
  hiroImage: string;
  cities: Array<object>;
  categories: Array<object>;
}

type Resolve = (json: MainData | null) => void;
type Reject = (err: object | null) => void;

const getMainData = async (setDataFn: Resolve, setErrorFn: Reject) => {
  await getAPI
    .main()
    .then((res) => res.json())
    .then((json) => {
      if (json) {
        setDataFn(json);
      } else throw Error();
    })
    .catch((err) => setErrorFn(err));
};

export { getMainData };
