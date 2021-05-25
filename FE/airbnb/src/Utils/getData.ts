import { getAPI } from "@/Utils/api";

interface MainData {
  hiroImage: string;
  cities: Array<object>;
  categories: Array<object>;
}

interface Args {
  setDataFn: (json: MainData | null) => void;
  setErrorFn: (err: object | null) => void;
}

const getData = async ({ setDataFn, setErrorFn }: Args) => {
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

export default getData;
// export {};
