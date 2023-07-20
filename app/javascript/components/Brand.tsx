import React from "react";

type Props = {
  id: string;
  name: string;
};

function Brand({ id, name }: Props) {
  return <p>{`${id} ${name}`}</p>;
}

export default Brand;
