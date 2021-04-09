"""empty message

Revision ID: 09df00b29a8e
Revises: a0b1bae347ef
Create Date: 2021-02-15 15:32:34.572567

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '09df00b29a8e'
down_revision = 'a0b1bae347ef'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('user', sa.Column('status', sa.Integer(), nullable=True))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('user', 'status')
    # ### end Alembic commands ###