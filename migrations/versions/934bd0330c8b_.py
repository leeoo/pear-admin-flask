"""empty message

Revision ID: 934bd0330c8b
Revises: 83be574320e4
Create Date: 2021-02-20 00:22:22.587245

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '934bd0330c8b'
down_revision = '83be574320e4'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('photo', sa.Column('create_time', sa.DateTime(), nullable=True))
    op.drop_column('photo', 'create_at')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('photo', sa.Column('create_at', mysql.DATETIME(), nullable=True))
    op.drop_column('photo', 'create_time')
    # ### end Alembic commands ###