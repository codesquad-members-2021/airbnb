import styled from 'styled-components';
import { ReactComponent as DeleteIcon } from '../icon/x-circle.svg';

const DeleteButton = (props) => {
  return (
    <Button>
      <DeleteIcon />
    </Button>
  );
};

const Button = styled.button``;

export default DeleteButton;
