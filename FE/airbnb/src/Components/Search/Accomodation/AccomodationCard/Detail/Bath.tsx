interface Props {
  bathCount: number;
}

const Bath = ({ bathCount }: Props) => {
  return bathCount !== 0 ? <span>욕실 {bathCount}개</span> : null;
};

export default Bath;
