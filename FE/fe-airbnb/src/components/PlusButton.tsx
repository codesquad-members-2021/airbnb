import styled from 'styled-components';
import { ReactComponent as PlusIcon } from '../icon/plus-circle.svg';

function PlusButton() {
  return (
    <Button>
      <PlusIcon />
    </Button>
  )
}

const Button = styled.button``

export default PlusButton
