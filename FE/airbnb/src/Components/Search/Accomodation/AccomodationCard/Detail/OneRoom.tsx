interface Props {
  isOneRoom: boolean;
}

const OneRoom = ({ isOneRoom }: Props) => {
  return isOneRoom ? <span>원룸 • </span> : null;
};

export default OneRoom;
