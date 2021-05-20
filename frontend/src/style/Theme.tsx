import styled from 'styled-components';

export const Theme = {
	color: {
    red_btn: '#E84C60',
    white: '#FFFFFF',
		grey_1: '#E0E0E0',
		grey_2: '#BDBDBD',
		grey_3: '#828282',
		grey_4: '#4F4F4F',
    black: '#333333',
	},
  fontWeight: {
    w1: 400,
    w2: 700,
    w3: 900
  },
  fontSize:{
    super_sm: '12px',
    x_sm: '14px',
    sm: '16px',
    md: '18px',
    lg: '20px',
    x_lg: '24px',
    super_lg: '32px',
  },
  modalWidth:{
    place: '280px',
    date: '1120px'
  },
  modalPadding:{
    place: '20px 0'
  },
  modalPosition:{
    place: '210px',
    date: '210px',
  },
  searchWidth:{
    date: '200px'
  }
}

export const AlignTextCenter = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;



