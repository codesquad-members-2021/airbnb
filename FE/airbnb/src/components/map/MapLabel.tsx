interface Props {
  price: number;
}

const MapLabel = ({ price }: Props) => {
  return `<div class='label'>${price}</div>`;
};

export default MapLabel;
