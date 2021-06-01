interface Props {
  price: number;
}

const MapLabel = ({ price }: Props) => {
  return `<div class='label'>￦100,000</div>`;
};

export default MapLabel;
