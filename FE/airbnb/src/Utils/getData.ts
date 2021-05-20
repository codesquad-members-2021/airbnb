// import { getAPI } from "@/Utils/api";

// interface Args {
//   apiName: string;
//   setDataFn: () => void;
//   setErrorFn: () => void;
// }

// const getData = async ({ apiName, setDataFn, setErrorFn }: Args) => {
//   await getAPI[apiName]
//     .then((res: object) => res.json())
//     .then((json: object) => {
//       if (json) {
//         setDataFn(json);
//       } else {
//         throw Error();
//       }
//     })
//     .catch((err) => setErrorFn(err));
// };

// export default getData;
