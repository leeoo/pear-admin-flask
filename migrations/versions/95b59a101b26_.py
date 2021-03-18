"""empty message

Revision ID: 95b59a101b26
Revises: 816f66c2def4
Create Date: 2021-03-17 22:28:41.595865

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '95b59a101b26'
down_revision = '816f66c2def4'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('admin_user', sa.Column('enable', sa.Integer(), nullable=True, comment='启用'))
    op.drop_column('admin_user', 'status')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('admin_user', sa.Column('status', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True, comment='启用'))
    op.drop_column('admin_user', 'enable')
    # ### end Alembic commands ###
