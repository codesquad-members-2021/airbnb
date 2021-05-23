import {} from "react";
import Calendar, { OnClickResult } from "./Calendar";
export default function Test() {
  const onClickDay = (result: OnClickResult) => {
    console.log(result);
  };
  return <Calendar onClickDay={onClickDay} />;
}
