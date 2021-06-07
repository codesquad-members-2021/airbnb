import styled from 'styled-components';
import { ReactComponent as MinusIcon } from '../icon/minus-circle.svg';

function MinusButton() {
  return (
    <Button>
      <MinusIcon />
    </Button>
  )
}

const Button = styled.button``

export default MinusButton
