"""empty message

Revision ID: 54d99d1873c3
Revises: 23078ba5f01f
Create Date: 2021-02-19 23:11:04.343761

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '54d99d1873c3'
down_revision = '23078ba5f01f'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('photo',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.CHAR(length=50), nullable=False),
    sa.Column('mime', sa.CHAR(length=50), nullable=False),
    sa.Column('size', sa.CHAR(length=30), nullable=False),
    sa.Column('ext', sa.CHAR(length=10), nullable=False),
    sa.Column('create_at', sa.DateTime(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('photo')
    # ### end Alembic commands ###
